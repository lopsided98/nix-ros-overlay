
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-uuid";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_uuid/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "02a838e4b7748394bd250050b6453f135db87ccf3a6f2855fd93fce0a23ae558";
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
