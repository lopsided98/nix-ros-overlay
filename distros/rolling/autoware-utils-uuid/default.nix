
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-uuid";
  version = "1.7.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_uuid/1.7.2-1.tar.gz";
    name = "1.7.2-1.tar.gz";
    sha256 = "6b9bddbf14f3f7da3f88426307bce322e46b9678b8d216ae72d677deb6867b07";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ boost unique-identifier-msgs ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_utils_uuid package";
    license = with lib.licenses; [ asl20 ];
  };
}
