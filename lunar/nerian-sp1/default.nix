
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, SDL, boost, sensor-msgs, cv-bridge, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-nerian-sp1";
  version = "1.6.3";

  src = fetchurl {
    url = https://github.com/nerian-vision/nerian_sp1-release/archive/release/lunar/nerian_sp1/1.6.3-0.tar.gz;
    sha256 = "d44e98b1290148b429b9142297db76874c4b10dae4011361874b58d3160ab166";
  };

  buildInputs = [ SDL boost sensor-msgs cv-bridge message-generation std-msgs roscpp ];
  propagatedBuildInputs = [ SDL boost sensor-msgs cv-bridge message-runtime std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Node for the SP1 Stereo Vision System by Nerian Vision Technologies'';
    license = with lib.licenses; [ mit ];
  };
}
