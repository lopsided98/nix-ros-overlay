
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, fss-time, geometry-msgs, glew, glfw3, launch, launch-ros, nav-msgs, opencv, pcl, pcl-conversions, rclcpp, sensor-msgs, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-fss-sensing";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/fastswarmsim-release/archive/release/humble/fss_sensing/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "9ecdff3db62139176e44b64fb214ce32d5ac4192c9807bc7beaa04fcc4af1fe1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-index-cpp fss-time geometry-msgs glew glfw3 launch launch-ros nav-msgs opencv opencv.cxxdev pcl pcl-conversions rclcpp sensor-msgs yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 sensing wrappers for FastSwarmSim.";
    license = with lib.licenses; [ bsd3 ];
  };
}
