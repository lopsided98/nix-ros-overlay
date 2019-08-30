
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-viz, catkin, husky-msgs }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.0-r1";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.0-1.tar.gz;
    sha256 = "bb9cd0fe8ce35a3c2cd8628bc6e5856b732545abfd996d5d55e00cccb89e381f";
  };

  propagatedBuildInputs = [ husky-viz husky-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
