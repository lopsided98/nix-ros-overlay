
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, kobuki-node, nodelet, rocon-app-manager, rocon-apps, std-capabilities }:
buildRosPackage {
  pname = "ros-kinetic-kobuki-capabilities";
  version = "0.7.6";

  src = fetchurl {
    url = "https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/kobuki_capabilities/0.7.6-0.tar.gz";
    name = "0.7.6-0.tar.gz";
    sha256 = "6e31a8d51551c769b70103e738f58638d0e5f114ee602cebb17e43c794fe221c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ kobuki-node nodelet rocon-app-manager rocon-apps std-capabilities ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Kobuki's capabilities'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
