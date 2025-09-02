import markdownIt from "markdown-it";

export default async function(eleventyConfig) {
  eleventyConfig.setFrontMatterParsingOptions({
		language: "json"
	});
  let options = {
		html: true
	};
  eleventyConfig.addPassthroughCopy("css/*.css");
  eleventyConfig.setLibrary("md", markdownIt(options));
};

export const config = {
  dir: {
    input: "content"
  }
};