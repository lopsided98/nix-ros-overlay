
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nlohmann_json }:
buildRosPackage {
  pname = "ros-jazzy-tobas-inja-vendor";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_inja_vendor/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "6f9ecd776987f0857dd5c501bfc219724b8b8d8437bbb2b664b7118e1e1570d8";
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
