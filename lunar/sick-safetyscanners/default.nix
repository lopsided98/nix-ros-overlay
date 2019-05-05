
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, catkin, rqt-reconfigure, message-generation, message-runtime, dynamic-reconfigure, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-sick-safetyscanners";
  version = "1.0.2";

  src = fetchurl {
    url = https://github.com/SICKAG/sick_safetyscanners-release/archive/release/lunar/sick_safetyscanners/1.0.2-0.tar.gz;
    sha256 = "1c79bb00fef74f79c4216d983bd04fa8c642f78692125d5baeb065cf08bb3579";
  };

  buildInputs = [ sensor-msgs message-generation dynamic-reconfigure std-msgs roscpp ];
  propagatedBuildInputs = [ sensor-msgs rqt-reconfigure message-runtime dynamic-reconfigure std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Provides an Interface to read the sensor output of a SICK
  Safety Scanner'';
    license = with lib.licenses; [ "ALv2" ];
  };
}
