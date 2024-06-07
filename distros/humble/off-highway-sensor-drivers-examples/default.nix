
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, nav-msgs, off-highway-premium-radar-sample, off-highway-radar, pcl-ros, rclcpp, rclcpp-components }:
buildRosPackage {
  pname = "ros-humble-off-highway-sensor-drivers-examples";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/off_highway_sensor_drivers-release/archive/release/humble/off_highway_sensor_drivers_examples/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "2b28573972f6744daa9eb21600b4509ef0e497759c5eba9a79b72c1c6a35244d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs off-highway-premium-radar-sample off-highway-radar pcl-ros rclcpp rclcpp-components ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The off_highway_sensor_drivers_examples package";
    license = with lib.licenses; [ asl20 ];
  };
}
