
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-manager, dsr-msgs2, hardware-interface, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-foxy-dsr-control2";
  version = "0.1.1-r4";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot2-release/archive/release/foxy/dsr_control2/0.1.1-4.tar.gz";
    name = "0.1.1-4.tar.gz";
    sha256 = "daf2efcfd327b721e97256f937af60b29a736603eba98f321357fcc28f278081";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-manager dsr-msgs2 hardware-interface rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dsr_control2 package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
