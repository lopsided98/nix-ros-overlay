
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, husky-viz, catkin, husky-msgs }:
buildRosPackage {
  pname = "ros-kinetic-husky-desktop";
  version = "0.3.3";

  src = fetchurl {
    url = https://github.com/clearpath-gbp/husky-release/archive/release/kinetic/husky_desktop/0.3.3-0.tar.gz;
    sha256 = "aacf67c92429801d02a5792893e254ba2ceb4f6c4f4b8aec34f3b09c4373ccbc";
  };

  propagatedBuildInputs = [ husky-viz husky-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearpath Husky visualization software'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
