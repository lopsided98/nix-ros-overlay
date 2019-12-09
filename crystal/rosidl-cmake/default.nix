
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-actions, python3Packages, ament-lint-common, ament-cmake, ament-lint-auto, ament-cmake-python, rosidl-parser }:
buildRosPackage {
  pname = "ros-crystal-rosidl-cmake";
  version = "0.6.3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosidl-release/archive/release/crystal/rosidl_cmake/0.6.3-0.tar.gz";
    name = "0.6.3-0.tar.gz";
    sha256 = "511f4f0f1635d02c087d46fdb566d7a176bf94d1be85488a8764a9c93f706368";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ament-lint-auto ];
  propagatedBuildInputs = [ rosidl-parser rosidl-actions python3Packages.empy ament-cmake ];
  nativeBuildInputs = [ ament-cmake-python ament-cmake ];

  meta = {
    description = ''The CMake functionality to invoke code generation for ROS interface files.'';
    license = with lib.licenses; [ asl20 ];
  };
}
