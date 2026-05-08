
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-humble-autoware-utils-uuid";
  version = "1.7.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/humble/autoware_utils_uuid/1.7.2-2.tar.gz";
    name = "1.7.2-2.tar.gz";
    sha256 = "4ec4e19bdba5054716f48f63699160f4210e2db60fc06f51793f787d936397ab";
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
