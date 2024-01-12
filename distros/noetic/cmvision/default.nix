
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, fltk, message-generation, message-runtime, roscpp, sensor-msgs, std-msgs, wxGTK32 }:
buildRosPackage {
  pname = "ros-noetic-cmvision";
  version = "0.5.0-r2";

  src = fetchurl {
    url = "https://github.com/teshanshanuka/cmvision-release/archive/release/noetic/cmvision/0.5.0-2.tar.gz";
    name = "0.5.0-2.tar.gz";
    sha256 = "edbbbcac9c23621ab1408052274744ddbd47e972d2d6c3db1657baa893fec78c";
  };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ cv-bridge fltk message-runtime roscpp sensor-msgs std-msgs wxGTK32 ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the Color Machine Vision Project, used for fast color blob detection'';
    license = with lib.licenses; [ "LGPL" ];
  };
}
