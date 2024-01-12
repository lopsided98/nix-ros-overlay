
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces }:
buildRosPackage {
  pname = "ros-iron-sick-safetyscanners2";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2-release/archive/release/iron/sick_safetyscanners2/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "cce7051dcb2755066e5d70632839029dceed97456c26ae6f854db60193224894";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ boost rclcpp rclcpp-lifecycle sensor-msgs sick-safetyscanners-base sick-safetyscanners2-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 Driver for the SICK safetyscanners'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
