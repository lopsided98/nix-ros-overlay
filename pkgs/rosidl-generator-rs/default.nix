{ lib, buildRosPackage, fetchFromGitHub, fetchpatch, ament-cmake-core
, ament-cmake-python, rosidl-typesupport-introspection-c, rmw, rosidl-cmake
, rosidl-generator-c, rosidl-parser, rosidl-runtime-c, rosidl-typesupport-c
, rosidl-typesupport-interface }:
buildRosPackage rec {
  pname = "rosidl-generator-rs";
  version = "0.3.1";

  src = fetchFromGitHub {
    owner = "ros2-rust";
    repo = "ros2_rust";
    rev = version;
    hash = "sha256-2kExpUDkPY+gvQflornneSmxSv4eM5eeBMGnuV7eg90=";
  };
  sourceRoot = "source/rosidl_generator_rs";

  patches = [
    # Remove dependency on rmw_implementation
    (fetchpatch {
      url = "https://github.com/ros2-rust/ros2_rust/commit/376fdeb43b4feb0ab82edb5851cc50f8152e0e4f.patch";
      hash = "sha256-iFCZa2kP7Dd03t2QGTh5b/E8ZVqhlM7DwsqGwiqkzYs=";
      stripLen = 1;
    })
  ];

  buildType = "ament_cmake";
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
