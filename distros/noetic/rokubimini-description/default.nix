
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-noetic-rokubimini-description";
  version = "0.6.1-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/-/archive/release/noetic/rokubimini_description/0.6.1-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "080320618e1d3c340315f44a036b4b4f7aeb22ece7afc883430749e7c3105597";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
