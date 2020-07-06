{ stdenv, fetchFromGitHub, cmake, pkg-config
, majorVersion ? "2"
, version ? "2.2.0"
, srcSha256 ? "0ddhczq4pn89j9i5c1pqxdph8fy5s3ahfpc7hhaz4s2xz0zs1pg2"
, ... }:

stdenv.mkDerivation rec {
  pname = "ignition-cmake${majorVersion}";
  inherit version;

  src = fetchFromGitHub {
    owner = "ignitionrobotics";
    repo = "ign-cmake";
    rev = "${pname}_${version}";
    sha256 = srcSha256;
  };

  nativeBuildInputs = [ cmake ];
  # pkg-config is needed to use some CMake modules in this package
  propagatedBuildInputs = [ pkg-config ];

  meta = with stdenv.lib; {
    homepage = "https://ignitionrobotics.org/libs/cmake";
    description = "CMake Modules for Ignition Projects";
    license = licenses.asl20;
    maintainers = with maintainers; [ lopsided98 ];
    platforms = platforms.all;
  };
}
