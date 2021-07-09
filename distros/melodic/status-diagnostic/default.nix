
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, diagnostic-msgs, mavros, roscpp, std-msgs, topic-tools }:
buildRosPackage {
  pname = "ros-melodic-status-diagnostic";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/status_diagnostic/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "6329f09a2950677ec3e3d0b7816cf90c8d69fd616a5b421ff060ce7946f81924";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ diagnostic-msgs mavros roscpp std-msgs topic-tools ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Status messages for diagnostic'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
