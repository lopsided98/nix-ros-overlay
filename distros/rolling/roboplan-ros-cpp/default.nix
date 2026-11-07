
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, builtin-interfaces, eigen, geometry-msgs, pinocchio, python3, python3Packages, roboplan-core, roboplan-example-models, rosidl-generator-cpp, sensor-msgs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-roboplan-ros-cpp";
  version = "0.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/rolling/roboplan_ros_cpp/0.8.0-1.tar.gz";
    name = "0.8.0-1.tar.gz";
    sha256 = "6d182f326ab24778f8cf4e6afda616332f7b80e9589a03e1931ca7242381a77e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-index-cpp roboplan-example-models ];
  propagatedBuildInputs = [ eigen geometry-msgs pinocchio roboplan-core rosidl-generator-cpp sensor-msgs tf2-eigen trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 C++ bindings for the RoboPlan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
