
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-viz, catkin, husky-msgs }:
buildRosPackage {
  pname = "ros-kinetic-husky-desktop";
  version = "0.3.2";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_desktop/0.3.2-0.tar.gz;
    sha256 = "922e044d2aad2acc9acaa524b7a3c3c6e4d7fefa3bcd3ac7fc30bfacb5e9d380";
  };

  propagatedBuildInputs = [ husky-viz husky-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    #license = lib.licenses.BSD;
  };
}
