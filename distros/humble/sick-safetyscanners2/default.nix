
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, boost, rclcpp, rclcpp-lifecycle, sensor-msgs, sick-safetyscanners-base, sick-safetyscanners2-interfaces }:
buildRosPackage {
  pname = "ros-humble-sick-safetyscanners2";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners2-release/archive/release/humble/sick_safetyscanners2/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "067552406896f93c603177816048db9d818e84bd2d81880e2ba42b1ddbdfb40c";
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
