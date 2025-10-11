{ lib, buildRosPackage, fetchFromGitHub, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, ros-environment, rosidl-generator-c, rosidl-parser, rosidl-pycommon, rosidl-typesupport-c, rosidl-typesupport-interface }:
buildRosPackage rec {
  pname = "rosidl-generator-rs";
  version = "0.4.7+git";

  src = fetchFromGitHub {
    owner = "ros2-rust";
    repo = "rosidl_rust";
    rev = "bfc382b3567992e9d0ed55b313e3c6cebacbdc02";
    sha256 = "0gn178y2hq23m6psiwqzms8zp40ykaq98vzx840mzmza4jsbmcz2";
  };

  buildType = "ament_cmake";
  sourceRoot = "${src.name}/rosidl_generator_rs/";

  strictDeps = true;
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common rosidl-generator-c rosidl-pycommon ];
  propagatedBuildInputs = [ ament-cmake ros-environment rosidl-generator-c rosidl-parser rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];
  nativeBuildInputs = [ ament-cmake ros-environment rosidl-pycommon rosidl-typesupport-c rosidl-typesupport-interface ];

  meta = {
    description = "Tool to generate the ROS interfaces in Rust";
    homepage = "https://github.com/ros2-rust/ros2_rust";
    license = with lib.licenses; [ asl20 ];
  };
}
