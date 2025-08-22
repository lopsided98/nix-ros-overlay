
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, autoware-adapi-adaptors, autoware-cmake, autoware-default-adapi, autoware-lint-common }:
buildRosPackage {
  pname = "ros-humble-autoware-core-api";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_core-release/archive/release/humble/autoware_core_api/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "d509a99082927b81533ce639b4051c747bb76fdfa436ae3fa1d7c092fb44dbf8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto autoware-cmake ];
  checkInputs = [ ament-lint-auto autoware-lint-common ];
  propagatedBuildInputs = [ autoware-adapi-adaptors autoware-default-adapi ];
  nativeBuildInputs = [ ament-cmake-auto autoware-cmake ];

  meta = {
    description = "The autoware_core_api package";
    license = with lib.licenses; [ asl20 ];
  };
}
