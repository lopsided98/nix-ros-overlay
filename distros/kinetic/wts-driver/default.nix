
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, roscpp, std-msgs }:
buildRosPackage {
  pname = "ros-kinetic-wts-driver";
  version = "1.0.4";

  src = fetchurl {
    url = "https://github.com/ksatyaki/wts_driver-release/archive/release/kinetic/wts_driver/1.0.4-0.tar.gz";
    name = "1.0.4-0.tar.gz";
    sha256 = "8716cd0606b804c50ffe1ff79d1c263e85081535f5efb3606f74d01095576f19";
  };

  buildType = "catkin";
  buildInputs = [ message-generation ];
  propagatedBuildInputs = [ message-runtime roscpp std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wts_driver package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
