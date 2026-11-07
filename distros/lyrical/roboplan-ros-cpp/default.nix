
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, builtin-interfaces, eigen, geometry-msgs, pinocchio, python3, python3Packages, roboplan-core, roboplan-example-models, rosidl-generator-cpp, sensor-msgs, tf2-eigen, trajectory-msgs }:
buildRosPackage {
  pname = "ros-lyrical-roboplan-ros-cpp";
  version = "0.8.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan_ros-release/archive/release/lyrical/roboplan_ros_cpp/0.8.0-2.tar.gz";
    name = "0.8.0-2.tar.gz";
    sha256 = "4de91f41f92714b32f9c137fb0d450c3e0091d205dca08c3f48f70d506046f7a";
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
