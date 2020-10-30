
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, sensor-msgs, std-msgs, xacro }:
buildRosPackage {
  pname = "ros-melodic-rokubimini-description";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/rokubimini_description/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "ae0f59984ef20e956f46873589426e2383d00299dbef87e415004affb6b4a070";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ sensor-msgs std-msgs xacro ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rokubimini_description package'';
    license = with lib.licenses; [ asl20 ];
  };
}
