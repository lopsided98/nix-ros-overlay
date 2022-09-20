
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, audibot-description, audibot-gazebo, catkin }:
buildRosPackage {
  pname = "ros-melodic-audibot";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/robustify/audibot-release/archive/release/melodic/audibot/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "52f9d46004b1a241245204385bfba00fb6ff8a4f2c7ecb7a43c4784c5f764df6";
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
