
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-updater, dynamic-reconfigure, message-generation, message-runtime, roscpp, rqt-reconfigure, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-sick-safetyscanners";
  version = "1.0.5-r1";

  src = fetchurl {
    url = "https://github.com/SICKAG/sick_safetyscanners-release/archive/release/melodic/sick_safetyscanners/1.0.5-1.tar.gz";
    name = "1.0.5-1.tar.gz";
    sha256 = "6a68c960289587db1874f30044b13bf6b436b49c14f901185c0d55865ba6b48f";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ diagnostic-updater dynamic-reconfigure message-runtime roscpp rqt-reconfigure sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
