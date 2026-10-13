
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-tobas-inja-vendor";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_inja_vendor/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "a798e41d72a74cd3a1962e9a27f3b7e72015185aba580371d08d24123139992f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ nlohmann_json ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only inja template engine";
    license = with lib.licenses; [ mit ];
  };
}
