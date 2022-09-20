
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, boost, controller-interface, diagnostic-msgs, geographic-msgs, gtk3, hardware-interface, nmea-msgs, ouxt-lint-common, pkg-config, pluginlib, quaternion-operation, rclcpp, rclcpp-components, realtime-tools, ros2-control, rviz2 }:
buildRosPackage {
  pname = "ros-galactic-nmea-hardware-interface";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/nmea_hardware_interface-release/archive/release/galactic/nmea_hardware_interface/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "aa12e194f677655d07f5319b5433691371c9867eb6e426eda9c8885be7cc090a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  propagatedBuildInputs = [ boost controller-interface diagnostic-msgs geographic-msgs gtk3 hardware-interface nmea-msgs pkg-config pluginlib quaternion-operation rclcpp rclcpp-components realtime-tools ros2-control rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2 hardware interface for nmea_gps'';
    license = with lib.licenses; [ "apache-2.0" ];
  };
}
