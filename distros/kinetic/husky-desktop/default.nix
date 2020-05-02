
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, husky-msgs, husky-viz }:
buildRosPackage {
  pname = "ros-kinetic-husky-desktop";
  version = "0.3.6-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_desktop/0.3.6-1.tar.gz";
    name = "0.3.6-1.tar.gz";
    sha256 = "a1f42c978c9e60f01c1592aef95ff988359d0cbaadb532aa8e46c2e561c36e27";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ husky-msgs husky-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
