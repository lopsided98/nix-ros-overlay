
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, robot-state-publisher }:
buildRosPackage {
  pname = "ros-humble-autoware-core-vehicle";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_vehicle/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "46d98505f189dfa305b1e4ca890355c49f571bc83664cba53d62e5ac662ca87c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ robot-state-publisher ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_vehicle package";
    license = with lib.licenses; [ asl20 ];
  };
}
