
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc2xx-core, tobas-ic-drivers, tobas-sbus-driver }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc2xx-test";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc2xx_test/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "3a55fdad103864ddb81499d099cab6e9b9f06f6c4ec20b3656ec99369df2b096";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fc2xx-core tobas-ic-drivers tobas-sbus-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware and integration tests for FC2xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
