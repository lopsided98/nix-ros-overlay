
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, gtest, rosunit }:
buildRosPackage {
  pname = "ros-melodic-bota-signal-handler";
  version = "0.5.2-r2";

  src = fetchurl {
    url = "https://gitlab.com/botasys/bota_driver-release/repository/archive.tar.gz?ref=release/melodic/bota_signal_handler/0.5.2-2";
    name = "archive.tar.gz";
    sha256 = "ee701a44c3c122d5ea4168b5698bcb012a1d093c7aec68129b6ed00495d94d39";
  };

  buildType = "catkin";
  checkInputs = [ gtest rosunit ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Contains a static signal handling helper class.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
