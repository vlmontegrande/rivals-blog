export default async function(eleventyConfig) {
  eleventyConfig.setFrontMatterParsingOptions({
		language: "json"
	});
};

export const config = {
  dir: {
    input: "content"
  }
};