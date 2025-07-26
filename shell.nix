{ pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
	nativeBuildInputs = with pkgs.buildPackages; [
		pkg-config
		llvmPackages_20.clang-tools
		llvmPackages_20.clang
		#clang-tools_18
		#clang_18
		gnumake
		bear
		gcc14
		ninja
		meson
		mesonlsp
	];
	buildInputs = with pkgs; [
		xorg.libX11.dev
		gtk3.dev
		glib.dev
		#gtk2.dev
		glib.dev
		libGLU.dev
		freetype.dev
		fftw.dev	
		fftwFloat.dev	
		ftgl
	];
}
