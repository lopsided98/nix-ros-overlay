
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-utils-uuid";
  version = "1.4.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/jazzy/autoware_utils_uuid/1.4.2-1.tar.gz";
    name = "1.4.2-1.tar.gz";
    sha256 = "b97298b7c0c1b9cf87315891bfa1074fa8cb58da303b3fe1c507fab05c4dc362";
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
