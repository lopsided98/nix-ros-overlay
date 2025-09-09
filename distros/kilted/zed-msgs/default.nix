
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-copyright, ament-cmake-cppcheck, ament-cmake-lint-cmake, ament-cmake-pep257, ament-cmake-uncrustify, ament-cmake-xmllint, ament-lint-auto, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-zed-msgs";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/zed-ros2-interfaces-release/archive/release/kilted/zed_msgs/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "7305188a521ea8565c4b8191071635b1656383471b8af88e88aa49293b0b2b4e";
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
