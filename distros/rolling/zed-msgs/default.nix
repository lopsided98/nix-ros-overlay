
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-zed-msgs";
  version = "5.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-interfaces-release/archive/release/rolling/zed_msgs/5.0.1-1.tar.gz";
    name = "5.0.1-1.tar.gz";
    sha256 = "8779748b3a764eff5f1681c9631428d8ad6cc3d0f18fbc38442291ca13755a4e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-auto builtin-interfaces rosidl-default-generators ];
  checkInputs = [ ament-cmake-copyright ament-cmake-cppcheck ament-cmake-lint-cmake ament-cmake-pep257 ament-cmake-uncrustify ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Contains message and service definitions used by the ZED ROS2 nodes.";
    license = with lib.licenses; [ asl20 ];
  };
}
