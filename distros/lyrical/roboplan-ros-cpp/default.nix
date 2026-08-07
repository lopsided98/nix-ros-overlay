
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, builtin-interfaces, eigen, geometry-msgs, pinocchio, python3, python3Packages, roboplan, roboplan-example-models, rosidl-generator-cpp, sensor-msgs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-cpp";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_cpp/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "b6924fa31f58bd3f339039fc57211a3486aba9869afd87ce7b1d75f6ab6044bc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces python3 python3Packages.nanobind ];
  checkInputs = [ ament-index-cpp roboplan-example-models ];
  propagatedBuildInputs = [ eigen geometry-msgs pinocchio roboplan rosidl-generator-cpp sensor-msgs tf2-eigen trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 C++ bindings for the RoboPlan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
