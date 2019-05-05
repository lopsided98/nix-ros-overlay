
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, message-generation, message-runtime, std-msgs, roscpp }:
buildRosPackage {
  pname = "ros-lunar-wts-driver";
  version = "1.0.4-r2";

  src = fetchurl {
    url = https://github.com/ksatyaki/wts_driver-release/archive/release/lunar/wts_driver/1.0.4-2.tar.gz;
    sha256 = "20eb36ca07d7dd9bf6e3045d04bc6d1e819646085d0d9262c06fb99ed0d07d92";
  };

  buildInputs = [ std-msgs message-generation roscpp ];
  propagatedBuildInputs = [ std-msgs roscpp message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The wts_driver package'';
    license = with lib.licenses; [ gpl3 ];
  };
}
