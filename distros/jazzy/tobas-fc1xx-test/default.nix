
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-fc1xx-core, tobas-ic-drivers, tobas-sbus-driver }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fc1xx-test";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fc1xx_test/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "7199cd46be5e6f5889af9711b64a790e22cbed18718ab9aa647e85ce5c0df943";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-fc1xx-core tobas-ic-drivers tobas-sbus-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Hardware and integration tests for FC1xx flight controllers.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
