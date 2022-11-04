
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, rosbridge-server, roslaunch, rostest, roswww, rwt-utils-3rdparty, speech-recognition-msgs }:
buildRosPackage {
  pname = "ros-melodic-rwt-speech-recognition";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/visualization_rwt-release/archive/release/melodic/rwt_speech_recognition/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "3777c5129e7fea8791bfdbcf97400e38f57064ffc3e0c12fe75b78e6ffbfc24e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslaunch rostest ];
  propagatedBuildInputs = [ rosbridge-server roswww rwt-utils-3rdparty speech-recognition-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rwt_speech_recognition package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
