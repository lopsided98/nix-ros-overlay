
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-tobas-inja-vendor";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_inja_vendor/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "f7147b4a5eff341fd6d77b139b4660c424eaddf6d1edc688e560ee6d6c269f05";
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
