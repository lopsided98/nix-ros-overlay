
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, fields2cover, nav2-util, opennav-coverage, opennav-coverage-msgs, rclcpp, tinyxml-2 }:
buildRosPackage {
  pname = "ros-iron-opennav-row-coverage";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/open-navigation/opennav_coverage-release/archive/release/iron/opennav_row_coverage/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "6fbf2e0ce3fc422a4ad286c7f9024981bcca59c5a774ed1e5ac694727a3b7243";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ fields2cover nav2-util opennav-coverage opennav-coverage-msgs rclcpp tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A coverage server based on pre-defined rows'';
    license = with lib.licenses; [ asl20 ];
  };
}
