
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-tobas-inja-vendor";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_inja_vendor/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "f8fa4ec41f0543a70019f6356c6752535ae5edd7d372496ca8550b2b279699ac";
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
