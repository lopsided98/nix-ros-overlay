
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, sensor-msgs, dynamic-reconfigure, std-msgs, catkin, rqt-reconfigure, roscpp, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-sick-safetyscanners";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/melodic/sick_safetyscanners/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "31590fabcaa361afbf00a61ee073377bc003ad595053f3887c2b415d33290e28";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs dynamic-reconfigure std-msgs roscpp message-generation ];
  propagatedBuildInputs = [ sensor-msgs dynamic-reconfigure std-msgs rqt-reconfigure roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
