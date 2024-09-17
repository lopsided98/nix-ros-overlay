{ lib, buildRosPackage, fetchFromGitHub, fetchpatch, cmake, ament-cmake-core
, ament-cmake-python, rosidl-typesupport-introspection-c, rmw, rosidl-cmake
, rosidl-generator-c, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-c
, rosidl-typesupport-interface }:
buildRosPackage rec {
  pname = "rosidl-generator-rs";
  version = "0.4.1";

  src = fetchFromGitHub {
    owner = "ros2-rust";
    repo = "ros2_rust";
    rev = version;
    hash = "sha256-VbE/vhsz1uvN1dosidB+x2h1ai6qzjmfcPYVcgUl0Ec=";
  };
  sourceRoot = "source/rosidl_generator_rs";

  buildType = "ament_cmake";

  strictDeps = true;
  nativeBuildInputs = [ cmake ];
  buildInputs = [
    ament-cmake-core ament-cmake-python rosidl-typesupport-introspection-c
  ];
  propagatedBuildInputs = [
    rmw rosidl-cmake rosidl-generator-c rosidl-parser rosidl-runtime-c
    rosidl-typesupport-c rosidl-typesupport-interface
  ];

  meta = {
    description = "Generate the ROS interfaces in Rust.";
    license = with lib.licenses; [ asl20 ];
  };
}
