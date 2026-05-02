
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-cmake, autoware-lint-common, boost, unique-identifier-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-utils-uuid";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_utils-release/archive/release/rolling/autoware_utils_uuid/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "4ffbcbc214020919a4f5e1ab84c3ca3ca58b803d5e885a5ad56f14cf1684c7f2";
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
