
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-viz, husky-msgs, catkin }:
buildRosPackage {
  pname = "ros-melodic-husky-desktop";
  version = "0.4.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/melodic/husky_desktop/0.4.1-1.tar.gz";
    name = "0.4.1-1.tar.gz";
    sha256 = "f0f545eb9930687278ea4f5e93c89858fa430187d80c27567c26513a9cc33aea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-viz husky-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
