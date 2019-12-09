
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python3Packages, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-python, rosidl-parser, rosidl-adapter }:
buildRosPackage {
  pname = "ros-dashing-rosidl-cmake";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/dashing/rosidl_cmake/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "90754adaacb0883fba1a37ea6412e29f520214f050664a0338906c02f7ad1cd7";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-parser python3Packages.empy ament-cmake rosidl-adapter ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
