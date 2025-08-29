
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, autoware-vehicle-velocity-converter }:
buildRosPackage {
  pname = "ros-humble-autoware-core-sensing";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_sensing/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "9bec35f6e55542ec1aac5d794b8039082645732a994045e6da2cde53b11a9a89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-vehicle-velocity-converter ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_sensing package";
    license = with lib.licenses; [ asl20 ];
  };
}
