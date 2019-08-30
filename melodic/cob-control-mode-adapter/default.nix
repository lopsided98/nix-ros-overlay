
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, roslint, catkin, controller-manager-msgs, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-melodic-cob-control-mode-adapter";
  version = "0.8.0-r1";

  src = fetchurl {
    url = https://github.com/ipa320/cob_control-release/archive/release/melodic/cob_control_mode_adapter/0.8.0-1.tar.gz;
    sha256 = "5266877e15d7bb66f1fd638bbe5657b505af1fa01e75ae9c97946c91d8243ce6";
  };

  buildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  propagatedBuildInputs = [ boost roslint controller-manager-msgs std-msgs roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The cob_control_mode_adapter package'';
    license = with lib.licenses; [ asl20 ];
  };
}
