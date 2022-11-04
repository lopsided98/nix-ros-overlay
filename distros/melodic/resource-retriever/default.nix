
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, curl, pythonPackages, rosconsole, roslib }:
buildRosPackage {
  pname = "ros-melodic-resource-retriever";
  version = "1.12.7-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/resource_retriever-release/archive/release/melodic/resource_retriever/1.12.7-1.tar.gz";
    name = "1.12.7-1.tar.gz";
    sha256 = "ec0e86be440fb9dc95054a7d1257b19be7753b60fa1165de8988c6804ad5e255";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ boost curl pythonPackages.rospkg rosconsole roslib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''This package retrieves data from url-format files such as http://,
   ftp://, package:// file://, etc., and loads the data into memory.
   The package:// url for ros packages is translated into a local
   file:// url.  The resourse retriever was initially designed to load
   mesh files into memory, but it can be used for any type of
   data. The resource retriever is based on the the libcurl library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
