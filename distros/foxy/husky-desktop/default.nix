
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-foxy-husky-desktop";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/foxy/husky_desktop/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "5e1fe75b92b50e0373755fea98cde0987a69f3e55882264a759fecab34e7c237";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
