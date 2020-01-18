
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, kobuki-dock-drive, kobuki-driver }:
buildRosPackage {
  pname = "ros-eloquent-kobuki-core";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/stonier/kobuki_core-release/archive/release/eloquent/kobuki_core/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6d80c6c12c4176e6b6af665d72e6fffe5b8f0cfaaaffdcdfc094b082181561a9";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ kobuki-dock-drive kobuki-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Non-ROS software for Kobuki, Yujin Robot's mobile research base.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
