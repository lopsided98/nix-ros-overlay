
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces }:
buildRosPackage {
  pname = "ros-galactic-sick-safetyscanners2";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2-release/archive/release/galactic/sick_safetyscanners2/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "ff786c38ed256f8d35bb40c93eee1badb70aad97525d98948f6583e50b3c955b";
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
