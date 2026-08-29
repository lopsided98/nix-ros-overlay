
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, builtin-interfaces, eigen, geometry-msgs, pinocchio, python3, python3Packages, roboplan, roboplan-example-models, rosidl-generator-cpp, sensor-msgs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-roboplan-ros-cpp";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/kilted/roboplan_ros_cpp/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "b8abfc635f04f19d71a3bc78de0bc8488d3ee741021afdb5f42493ce6ff0ddc6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake builtin-interfaces python3 python3Packages.nanobind python3Packages.typing-extensions ];
  checkInputs = [ ament-index-cpp roboplan-example-models ];
  propagatedBuildInputs = [ eigen geometry-msgs pinocchio roboplan rosidl-generator-cpp sensor-msgs tf2-eigen trajectory-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 C++ bindings for the RoboPlan motion planning library.";
    license = with lib.licenses; [ mit ];
  };
}
