
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, audibot-gazebo, catkin }:
buildRosPackage {
  pname = "ros-noetic-audibot";
  version = "0.2.2-r5";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/noetic/audibot/0.2.2-5.tar.gz";
    name = "0.2.2-5.tar.gz";
    sha256 = "fa76761120c15a251f51d1c59e27986bb85a4b85768a907a34f46f05ff13e530";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ audibot-description audibot-gazebo ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for audibot'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
