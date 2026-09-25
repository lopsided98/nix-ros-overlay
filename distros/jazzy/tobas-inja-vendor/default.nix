
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-tobas-inja-vendor";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_inja_vendor/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "26dda661d82d99f1c4347be6e4697dbfd5f840e125afd0b241c6a747cf8eafae";
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
