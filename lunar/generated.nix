
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 abseil-cpp = self.callPackage ./abseil-cpp {};

 access-point-control = self.callPackage ./access-point-control {};

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 actionlib = self.callPackage ./actionlib {};

 actionlib-lisp = self.callPackage ./actionlib-lisp {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actionlib-tutorials = self.callPackage ./actionlib-tutorials {};

 agni-tf-tools = self.callPackage ./agni-tf-tools {};

 allocators = self.callPackage ./allocators {};

 amcl = self.callPackage ./amcl {};

 angles = self.callPackage ./angles {};

 app-manager = self.callPackage ./app-manager {};

 ar-track-alvar = self.callPackage ./ar-track-alvar {};

 ar-track-alvar-msgs = self.callPackage ./ar-track-alvar-msgs {};

 arbotix = self.callPackage ./arbotix {};

 arbotix-controllers = self.callPackage ./arbotix-controllers {};

 arbotix-firmware = self.callPackage ./arbotix-firmware {};

 arbotix-msgs = self.callPackage ./arbotix-msgs {};

 arbotix-python = self.callPackage ./arbotix-python {};

 arbotix-sensors = self.callPackage ./arbotix-sensors {};

 asmach = self.callPackage ./asmach {};

 asmach-tutorials = self.callPackage ./asmach-tutorials {};

 assimp-devel = self.callPackage ./assimp-devel {};

 assisted-teleop = self.callPackage ./assisted-teleop {};

 astuff-sensor-msgs = self.callPackage ./astuff-sensor-msgs {};

 async-comm = self.callPackage ./async-comm {};

 audio-capture = self.callPackage ./audio-capture {};

 audio-common = self.callPackage ./audio-common {};

 audio-common-msgs = self.callPackage ./audio-common-msgs {};

 audio-play = self.callPackage ./audio-play {};

 automotive-autonomy-msgs = self.callPackage ./automotive-autonomy-msgs {};

 automotive-navigation-msgs = self.callPackage ./automotive-navigation-msgs {};

 automotive-platform-msgs = self.callPackage ./automotive-platform-msgs {};

 auv-msgs = self.callPackage ./auv-msgs {};

 avt-vimba-camera = self.callPackage ./avt-vimba-camera {};

 axis-camera = self.callPackage ./axis-camera {};

 base-local-planner = self.callPackage ./base-local-planner {};

 bayesian-belief-networks = self.callPackage ./bayesian-belief-networks {};

 behaviortree-cpp = self.callPackage ./behaviortree-cpp {};

 behaviortree-cpp-v3 = self.callPackage ./behaviortree-cpp-v3 {};

 bfl = self.callPackage ./bfl {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bondpy = self.callPackage ./bondpy {};

 calibration = self.callPackage ./calibration {};

 calibration-estimation = self.callPackage ./calibration-estimation {};

 calibration-launch = self.callPackage ./calibration-launch {};

 calibration-msgs = self.callPackage ./calibration-msgs {};

 calibration-setup-helper = self.callPackage ./calibration-setup-helper {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 camera-info-manager-py = self.callPackage ./camera-info-manager-py {};

 camera-umd = self.callPackage ./camera-umd {};

 can-msgs = self.callPackage ./can-msgs {};

 canopen-402 = self.callPackage ./canopen-402 {};

 canopen-chain-node = self.callPackage ./canopen-chain-node {};

 canopen-master = self.callPackage ./canopen-master {};

 canopen-motor-node = self.callPackage ./canopen-motor-node {};

 capabilities = self.callPackage ./capabilities {};

 carrot-planner = self.callPackage ./carrot-planner {};

 cartesian-msgs = self.callPackage ./cartesian-msgs {};

 cartographer = self.callPackage ./cartographer {};

 cartographer-ros = self.callPackage ./cartographer-ros {};

 cartographer-ros-msgs = self.callPackage ./cartographer-ros-msgs {};

 cartographer-rviz = self.callPackage ./cartographer-rviz {};

 catch-ros = self.callPackage ./catch-ros {};

 catkin = self.callPackage ./catkin {};

 catkin-pip = self.callPackage ./catkin-pip {};

 catkin-virtualenv = self.callPackage ./catkin-virtualenv {};

 cl-tf = self.callPackage ./cl-tf {};

 cl-tf2 = self.callPackage ./cl-tf2 {};

 cl-transforms = self.callPackage ./cl-transforms {};

 cl-transforms-stamped = self.callPackage ./cl-transforms-stamped {};

 cl-urdf = self.callPackage ./cl-urdf {};

 cl-utils = self.callPackage ./cl-utils {};

 class-loader = self.callPackage ./class-loader {};

 clear-costmap-recovery = self.callPackage ./clear-costmap-recovery {};

 cmake-modules = self.callPackage ./cmake-modules {};

 code-coverage = self.callPackage ./code-coverage {};

 combined-robot-hw = self.callPackage ./combined-robot-hw {};

 combined-robot-hw-tests = self.callPackage ./combined-robot-hw-tests {};

 common-msgs = self.callPackage ./common-msgs {};

 common-tutorials = self.callPackage ./common-tutorials {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 controller-manager-tests = self.callPackage ./controller-manager-tests {};

 convex-decomposition = self.callPackage ./convex-decomposition {};

 costmap-2d = self.callPackage ./costmap-2d {};

 costmap-converter = self.callPackage ./costmap-converter {};

 costmap-cspace = self.callPackage ./costmap-cspace {};

 costmap-cspace-msgs = self.callPackage ./costmap-cspace-msgs {};

 costmap-queue = self.callPackage ./costmap-queue {};

 cpp-common = self.callPackage ./cpp-common {};

 cv-bridge = self.callPackage ./cv-bridge {};

 cv-camera = self.callPackage ./cv-camera {};

 ddwrt-access-point = self.callPackage ./ddwrt-access-point {};

 ddynamic-reconfigure-python = self.callPackage ./ddynamic-reconfigure-python {};

 delphi-esr-msgs = self.callPackage ./delphi-esr-msgs {};

 delphi-mrr-msgs = self.callPackage ./delphi-mrr-msgs {};

 delphi-srr-msgs = self.callPackage ./delphi-srr-msgs {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 derived-object-msgs = self.callPackage ./derived-object-msgs {};

 desistek-saga-control = self.callPackage ./desistek-saga-control {};

 desistek-saga-description = self.callPackage ./desistek-saga-description {};

 desistek-saga-gazebo = self.callPackage ./desistek-saga-gazebo {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-analysis = self.callPackage ./diagnostic-analysis {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 dlux-global-planner = self.callPackage ./dlux-global-planner {};

 dlux-plugins = self.callPackage ./dlux-plugins {};

 downward = self.callPackage ./downward {};

 driver-base = self.callPackage ./driver-base {};

 driver-common = self.callPackage ./driver-common {};

 dwa-local-planner = self.callPackage ./dwa-local-planner {};

 dwb-critics = self.callPackage ./dwb-critics {};

 dwb-local-planner = self.callPackage ./dwb-local-planner {};

 dwb-msgs = self.callPackage ./dwb-msgs {};

 dwb-plugins = self.callPackage ./dwb-plugins {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamic-reconfigure = self.callPackage ./dynamic-reconfigure {};

 dynamic-robot-state-publisher = self.callPackage ./dynamic-robot-state-publisher {};

 dynpick-driver = self.callPackage ./dynpick-driver {};

 easy-markers = self.callPackage ./easy-markers {};

 eca-a9-control = self.callPackage ./eca-a9-control {};

 eca-a9-description = self.callPackage ./eca-a9-description {};

 eca-a9-gazebo = self.callPackage ./eca-a9-gazebo {};

 ecl-build = self.callPackage ./ecl-build {};

 ecl-config = self.callPackage ./ecl-config {};

 ecl-console = self.callPackage ./ecl-console {};

 ecl-converters-lite = self.callPackage ./ecl-converters-lite {};

 ecl-errors = self.callPackage ./ecl-errors {};

 ecl-io = self.callPackage ./ecl-io {};

 ecl-license = self.callPackage ./ecl-license {};

 ecl-lite = self.callPackage ./ecl-lite {};

 ecl-sigslots-lite = self.callPackage ./ecl-sigslots-lite {};

 ecl-time-lite = self.callPackage ./ecl-time-lite {};

 ecl-tools = self.callPackage ./ecl-tools {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen-conversions = self.callPackage ./eigen-conversions {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigen-typekit = self.callPackage ./eigen-typekit {};

 eml = self.callPackage ./eml {};

 ethercat-hardware = self.callPackage ./ethercat-hardware {};

 ethercat-trigger-controllers = self.callPackage ./ethercat-trigger-controllers {};

 eus-assimp = self.callPackage ./eus-assimp {};

 eusurdf = self.callPackage ./eusurdf {};

 executive-smach = self.callPackage ./executive-smach {};

 executive-smach-visualization = self.callPackage ./executive-smach-visualization {};

 explore-lite = self.callPackage ./explore-lite {};

 face-detector = self.callPackage ./face-detector {};

 fake-localization = self.callPackage ./fake-localization {};

 ff = self.callPackage ./ff {};

 ffha = self.callPackage ./ffha {};

 filters = self.callPackage ./filters {};

 find-object-2d = self.callPackage ./find-object-2d {};

 fingertip-pressure = self.callPackage ./fingertip-pressure {};

 flexbe-behavior-engine = self.callPackage ./flexbe-behavior-engine {};

 flexbe-core = self.callPackage ./flexbe-core {};

 flexbe-input = self.callPackage ./flexbe-input {};

 flexbe-mirror = self.callPackage ./flexbe-mirror {};

 flexbe-msgs = self.callPackage ./flexbe-msgs {};

 flexbe-onboard = self.callPackage ./flexbe-onboard {};

 flexbe-states = self.callPackage ./flexbe-states {};

 flexbe-testing = self.callPackage ./flexbe-testing {};

 flexbe-widget = self.callPackage ./flexbe-widget {};

 flir-boson-usb = self.callPackage ./flir-boson-usb {};

 force-torque-sensor-controller = self.callPackage ./force-torque-sensor-controller {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-controller = self.callPackage ./four-wheel-steering-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 franka-description = self.callPackage ./franka-description {};

 gazebo-dev = self.callPackage ./gazebo-dev {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros-control = self.callPackage ./gazebo-ros-control {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gcloud-speech = self.callPackage ./gcloud-speech {};

 gcloud-speech-msgs = self.callPackage ./gcloud-speech-msgs {};

 gcloud-speech-utils = self.callPackage ./gcloud-speech-utils {};

 gencpp = self.callPackage ./gencpp {};

 geneus = self.callPackage ./geneus {};

 genlisp = self.callPackage ./genlisp {};

 genmsg = self.callPackage ./genmsg {};

 gennodejs = self.callPackage ./gennodejs {};

 genpy = self.callPackage ./genpy {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometric-shapes = self.callPackage ./geometric-shapes {};

 geometry = self.callPackage ./geometry {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gl-dependency = self.callPackage ./gl-dependency {};

 global-planner = self.callPackage ./global-planner {};

 global-planner-tests = self.callPackage ./global-planner-tests {};

 gmapping = self.callPackage ./gmapping {};

 goal-passer = self.callPackage ./goal-passer {};

 gps-common = self.callPackage ./gps-common {};

 gps-umd = self.callPackage ./gps-umd {};

 gpsd-client = self.callPackage ./gpsd-client {};

 graph-msgs = self.callPackage ./graph-msgs {};

 grasping-msgs = self.callPackage ./grasping-msgs {};

 grid-map = self.callPackage ./grid-map {};

 grid-map-core = self.callPackage ./grid-map-core {};

 grid-map-costmap-2d = self.callPackage ./grid-map-costmap-2d {};

 grid-map-cv = self.callPackage ./grid-map-cv {};

 grid-map-demos = self.callPackage ./grid-map-demos {};

 grid-map-filters = self.callPackage ./grid-map-filters {};

 grid-map-loader = self.callPackage ./grid-map-loader {};

 grid-map-msgs = self.callPackage ./grid-map-msgs {};

 grid-map-octomap = self.callPackage ./grid-map-octomap {};

 grid-map-pcl = self.callPackage ./grid-map-pcl {};

 grid-map-ros = self.callPackage ./grid-map-ros {};

 grid-map-rviz-plugin = self.callPackage ./grid-map-rviz-plugin {};

 grid-map-sdf = self.callPackage ./grid-map-sdf {};

 grid-map-visualization = self.callPackage ./grid-map-visualization {};

 gripper-action-controller = self.callPackage ./gripper-action-controller {};

 grpc = self.callPackage ./grpc {};

 gscam = self.callPackage ./gscam {};

 hardware-interface = self.callPackage ./hardware-interface {};

 hector-components-description = self.callPackage ./hector-components-description {};

 hector-gazebo = self.callPackage ./hector-gazebo {};

 hector-gazebo-plugins = self.callPackage ./hector-gazebo-plugins {};

 hector-gazebo-thermal-camera = self.callPackage ./hector-gazebo-thermal-camera {};

 hector-gazebo-worlds = self.callPackage ./hector-gazebo-worlds {};

 hector-models = self.callPackage ./hector-models {};

 hector-sensors-description = self.callPackage ./hector-sensors-description {};

 hector-sensors-gazebo = self.callPackage ./hector-sensors-gazebo {};

 hector-xacro-tools = self.callPackage ./hector-xacro-tools {};

 hokuyo3d = self.callPackage ./hokuyo3d {};

 hostapd-access-point = self.callPackage ./hostapd-access-point {};

 ibeo-core = self.callPackage ./ibeo-core {};

 ibeo-lux = self.callPackage ./ibeo-lux {};

 ibeo-msgs = self.callPackage ./ibeo-msgs {};

 ieee80211-channels = self.callPackage ./ieee80211-channels {};

 image-cb-detector = self.callPackage ./image-cb-detector {};

 image-common = self.callPackage ./image-common {};

 image-exposure-msgs = self.callPackage ./image-exposure-msgs {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 imagezero = self.callPackage ./imagezero {};

 imagezero-image-transport = self.callPackage ./imagezero-image-transport {};

 imagezero-ros = self.callPackage ./imagezero-ros {};

 imu-complementary-filter = self.callPackage ./imu-complementary-filter {};

 imu-filter-madgwick = self.callPackage ./imu-filter-madgwick {};

 imu-pipeline = self.callPackage ./imu-pipeline {};

 imu-processors = self.callPackage ./imu-processors {};

 imu-sensor-controller = self.callPackage ./imu-sensor-controller {};

 imu-tools = self.callPackage ./imu-tools {};

 imu-transformer = self.callPackage ./imu-transformer {};

 innok-heros-driver = self.callPackage ./innok-heros-driver {};

 interactive-marker-tutorials = self.callPackage ./interactive-marker-tutorials {};

 interactive-marker-twist-server = self.callPackage ./interactive-marker-twist-server {};

 interactive-markers = self.callPackage ./interactive-markers {};

 interval-intersection = self.callPackage ./interval-intersection {};

 iot-bridge = self.callPackage ./iot-bridge {};

 ira-laser-tools = self.callPackage ./ira-laser-tools {};

 ivcon = self.callPackage ./ivcon {};

 joint-limits-interface = self.callPackage ./joint-limits-interface {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-states-settler = self.callPackage ./joint-states-settler {};

 joint-trajectory-action = self.callPackage ./joint-trajectory-action {};

 joint-trajectory-action-tools = self.callPackage ./joint-trajectory-action-tools {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joint-trajectory-generator = self.callPackage ./joint-trajectory-generator {};

 joy = self.callPackage ./joy {};

 joy-listener = self.callPackage ./joy-listener {};

 joy-teleop = self.callPackage ./joy-teleop {};

 joystick-drivers = self.callPackage ./joystick-drivers {};

 joystick-interrupt = self.callPackage ./joystick-interrupt {};

 jpeg-streamer = self.callPackage ./jpeg-streamer {};

 jsk-3rdparty = self.callPackage ./jsk-3rdparty {};

 jsk-common-msgs = self.callPackage ./jsk-common-msgs {};

 jsk-footstep-msgs = self.callPackage ./jsk-footstep-msgs {};

 jsk-gui-msgs = self.callPackage ./jsk-gui-msgs {};

 jsk-hark-msgs = self.callPackage ./jsk-hark-msgs {};

 jsk-model-tools = self.callPackage ./jsk-model-tools {};

 jsk-roseus = self.callPackage ./jsk-roseus {};

 jskeus = self.callPackage ./jskeus {};

 json-msgs = self.callPackage ./json-msgs {};

 json-transport = self.callPackage ./json-transport {};

 julius = self.callPackage ./julius {};

 kalman-filter = self.callPackage ./kalman-filter {};

 kartech-linear-actuator-msgs = self.callPackage ./kartech-linear-actuator-msgs {};

 katana = self.callPackage ./katana {};

 katana-arm-gazebo = self.callPackage ./katana-arm-gazebo {};

 katana-description = self.callPackage ./katana-description {};

 katana-driver = self.callPackage ./katana-driver {};

 katana-gazebo-plugins = self.callPackage ./katana-gazebo-plugins {};

 katana-moveit-ikfast-plugin = self.callPackage ./katana-moveit-ikfast-plugin {};

 katana-msgs = self.callPackage ./katana-msgs {};

 katana-teleop = self.callPackage ./katana-teleop {};

 katana-tutorials = self.callPackage ./katana-tutorials {};

 kdl-conversions = self.callPackage ./kdl-conversions {};

 kdl-parser = self.callPackage ./kdl-parser {};

 kdl-parser-py = self.callPackage ./kdl-parser-py {};

 kdl-typekit = self.callPackage ./kdl-typekit {};

 key-teleop = self.callPackage ./key-teleop {};

 kni = self.callPackage ./kni {};

 laser-assembler = self.callPackage ./laser-assembler {};

 laser-cb-detector = self.callPackage ./laser-cb-detector {};

 laser-filtering = self.callPackage ./laser-filtering {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-pipeline = self.callPackage ./laser-pipeline {};

 laser-proc = self.callPackage ./laser-proc {};

 lauv-control = self.callPackage ./lauv-control {};

 lauv-description = self.callPackage ./lauv-description {};

 lauv-gazebo = self.callPackage ./lauv-gazebo {};

 leg-detector = self.callPackage ./leg-detector {};

 lgsvl-msgs = self.callPackage ./lgsvl-msgs {};

 libcmt = self.callPackage ./libcmt {};

 libcreate = self.callPackage ./libcreate {};

 libfreenect = self.callPackage ./libfreenect {};

 libg2o = self.callPackage ./libg2o {};

 libmavconn = self.callPackage ./libmavconn {};

 libphidget21 = self.callPackage ./libphidget21 {};

 libqt-concurrent = self.callPackage ./libqt-concurrent {};

 libqt-core = self.callPackage ./libqt-core {};

 libqt-dev = self.callPackage ./libqt-dev {};

 libqt-gui = self.callPackage ./libqt-gui {};

 libqt-network = self.callPackage ./libqt-network {};

 libqt-opengl = self.callPackage ./libqt-opengl {};

 libqt-opengl-dev = self.callPackage ./libqt-opengl-dev {};

 libqt-svg-dev = self.callPackage ./libqt-svg-dev {};

 libqt-widgets = self.callPackage ./libqt-widgets {};

 librviz-tutorial = self.callPackage ./librviz-tutorial {};

 libsiftfast = self.callPackage ./libsiftfast {};

 libuvc = self.callPackage ./libuvc {};

 libuvc-camera = self.callPackage ./libuvc-camera {};

 libuvc-ros = self.callPackage ./libuvc-ros {};

 linksys-access-point = self.callPackage ./linksys-access-point {};

 linux-networking = self.callPackage ./linux-networking {};

 lockfree = self.callPackage ./lockfree {};

 locomotor = self.callPackage ./locomotor {};

 locomotor-msgs = self.callPackage ./locomotor-msgs {};

 locomove-base = self.callPackage ./locomove-base {};

 log4cpp = self.callPackage ./log4cpp {};

 lpg-planner = self.callPackage ./lpg-planner {};

 map-laser = self.callPackage ./map-laser {};

 map-msgs = self.callPackage ./map-msgs {};

 map-organizer = self.callPackage ./map-organizer {};

 map-organizer-msgs = self.callPackage ./map-organizer-msgs {};

 map-server = self.callPackage ./map-server {};

 mapviz = self.callPackage ./mapviz {};

 mapviz-plugins = self.callPackage ./mapviz-plugins {};

 marti-can-msgs = self.callPackage ./marti-can-msgs {};

 marti-common-msgs = self.callPackage ./marti-common-msgs {};

 marti-data-structures = self.callPackage ./marti-data-structures {};

 marti-nav-msgs = self.callPackage ./marti-nav-msgs {};

 marti-perception-msgs = self.callPackage ./marti-perception-msgs {};

 marti-sensor-msgs = self.callPackage ./marti-sensor-msgs {};

 marti-status-msgs = self.callPackage ./marti-status-msgs {};

 marti-visualization-msgs = self.callPackage ./marti-visualization-msgs {};

 mav-comm = self.callPackage ./mav-comm {};

 mav-msgs = self.callPackage ./mav-msgs {};

 mav-planning-msgs = self.callPackage ./mav-planning-msgs {};

 mavlink = self.callPackage ./mavlink {};

 mavros-extras = self.callPackage ./mavros-extras {};

 mavros-msgs = self.callPackage ./mavros-msgs {};

 mbf-abstract-core = self.callPackage ./mbf-abstract-core {};

 mbf-abstract-nav = self.callPackage ./mbf-abstract-nav {};

 mbf-costmap-core = self.callPackage ./mbf-costmap-core {};

 mbf-costmap-nav = self.callPackage ./mbf-costmap-nav {};

 mbf-msgs = self.callPackage ./mbf-msgs {};

 mbf-simple-nav = self.callPackage ./mbf-simple-nav {};

 mbf-utility = self.callPackage ./mbf-utility {};

 mcl-3dl = self.callPackage ./mcl-3dl {};

 mcl-3dl-msgs = self.callPackage ./mcl-3dl-msgs {};

 media-export = self.callPackage ./media-export {};

 message-filters = self.callPackage ./message-filters {};

 message-generation = self.callPackage ./message-generation {};

 message-runtime = self.callPackage ./message-runtime {};

 microstrain-3dmgx2-imu = self.callPackage ./microstrain-3dmgx2-imu {};

 mini-maxwell = self.callPackage ./mini-maxwell {};

 mir-actions = self.callPackage ./mir-actions {};

 mir-description = self.callPackage ./mir-description {};

 mir-driver = self.callPackage ./mir-driver {};

 mir-dwb-critics = self.callPackage ./mir-dwb-critics {};

 mir-gazebo = self.callPackage ./mir-gazebo {};

 mir-msgs = self.callPackage ./mir-msgs {};

 mir-navigation = self.callPackage ./mir-navigation {};

 mir-robot = self.callPackage ./mir-robot {};

 mk = self.callPackage ./mk {};

 ml-classifiers = self.callPackage ./ml-classifiers {};

 mobileye-560-660-msgs = self.callPackage ./mobileye-560-660-msgs {};

 monocam-settler = self.callPackage ./monocam-settler {};

 mouse-teleop = self.callPackage ./mouse-teleop {};

 move-base = self.callPackage ./move-base {};

 move-base-flex = self.callPackage ./move-base-flex {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 move-slow-and-clear = self.callPackage ./move-slow-and-clear {};

 moveit = self.callPackage ./moveit {};

 moveit-controller-manager-example = self.callPackage ./moveit-controller-manager-example {};

 moveit-fake-controller-manager = self.callPackage ./moveit-fake-controller-manager {};

 moveit-kinematics = self.callPackage ./moveit-kinematics {};

 moveit-msgs = self.callPackage ./moveit-msgs {};

 moveit-planners = self.callPackage ./moveit-planners {};

 moveit-planners-ompl = self.callPackage ./moveit-planners-ompl {};

 moveit-plugins = self.callPackage ./moveit-plugins {};

 moveit-resources = self.callPackage ./moveit-resources {};

 moveit-ros = self.callPackage ./moveit-ros {};

 moveit-ros-benchmarks = self.callPackage ./moveit-ros-benchmarks {};

 moveit-ros-control-interface = self.callPackage ./moveit-ros-control-interface {};

 moveit-ros-manipulation = self.callPackage ./moveit-ros-manipulation {};

 moveit-ros-move-group = self.callPackage ./moveit-ros-move-group {};

 moveit-ros-perception = self.callPackage ./moveit-ros-perception {};

 moveit-ros-planning = self.callPackage ./moveit-ros-planning {};

 moveit-ros-planning-interface = self.callPackage ./moveit-ros-planning-interface {};

 moveit-ros-robot-interaction = self.callPackage ./moveit-ros-robot-interaction {};

 moveit-ros-visualization = self.callPackage ./moveit-ros-visualization {};

 moveit-ros-warehouse = self.callPackage ./moveit-ros-warehouse {};

 moveit-runtime = self.callPackage ./moveit-runtime {};

 moveit-setup-assistant = self.callPackage ./moveit-setup-assistant {};

 moveit-sim-controller = self.callPackage ./moveit-sim-controller {};

 moveit-simple-controller-manager = self.callPackage ./moveit-simple-controller-manager {};

 moveit-visual-tools = self.callPackage ./moveit-visual-tools {};

 mqtt-bridge = self.callPackage ./mqtt-bridge {};

 multi-interface-roam = self.callPackage ./multi-interface-roam {};

 multi-object-tracking-lidar = self.callPackage ./multi-object-tracking-lidar {};

 multires-image = self.callPackage ./multires-image {};

 multirobot-map-merge = self.callPackage ./multirobot-map-merge {};

 multisense = self.callPackage ./multisense {};

 multisense-bringup = self.callPackage ./multisense-bringup {};

 multisense-cal-check = self.callPackage ./multisense-cal-check {};

 multisense-description = self.callPackage ./multisense-description {};

 multisense-lib = self.callPackage ./multisense-lib {};

 multisense-ros = self.callPackage ./multisense-ros {};

 naoqi-libqi = self.callPackage ./naoqi-libqi {};

 nav2d = self.callPackage ./nav2d {};

 nav2d-exploration = self.callPackage ./nav2d-exploration {};

 nav2d-karto = self.callPackage ./nav2d-karto {};

 nav2d-localizer = self.callPackage ./nav2d-localizer {};

 nav2d-msgs = self.callPackage ./nav2d-msgs {};

 nav2d-navigator = self.callPackage ./nav2d-navigator {};

 nav2d-operator = self.callPackage ./nav2d-operator {};

 nav2d-remote = self.callPackage ./nav2d-remote {};

 nav2d-tutorials = self.callPackage ./nav2d-tutorials {};

 nav-2d-msgs = self.callPackage ./nav-2d-msgs {};

 nav-2d-utils = self.callPackage ./nav-2d-utils {};

 nav-core = self.callPackage ./nav-core {};

 nav-core2 = self.callPackage ./nav-core2 {};

 nav-core-adapter = self.callPackage ./nav-core-adapter {};

 nav-grid = self.callPackage ./nav-grid {};

 nav-grid-iterators = self.callPackage ./nav-grid-iterators {};

 nav-grid-pub-sub = self.callPackage ./nav-grid-pub-sub {};

 nav-msgs = self.callPackage ./nav-msgs {};

 nav-pcontroller = self.callPackage ./nav-pcontroller {};

 navfn = self.callPackage ./navfn {};

 navigation = self.callPackage ./navigation {};

 navigation-experimental = self.callPackage ./navigation-experimental {};

 neobotix-usboard-msgs = self.callPackage ./neobotix-usboard-msgs {};

 neonavigation = self.callPackage ./neonavigation {};

 neonavigation-common = self.callPackage ./neonavigation-common {};

 neonavigation-launch = self.callPackage ./neonavigation-launch {};

 neonavigation-msgs = self.callPackage ./neonavigation-msgs {};

 neonavigation-rviz-plugins = self.callPackage ./neonavigation-rviz-plugins {};

 nerian-sp1 = self.callPackage ./nerian-sp1 {};

 nerian-stereo = self.callPackage ./nerian-stereo {};

 network-control-tests = self.callPackage ./network-control-tests {};

 network-detector = self.callPackage ./network-detector {};

 network-interface = self.callPackage ./network-interface {};

 network-monitor-udp = self.callPackage ./network-monitor-udp {};

 network-traffic-control = self.callPackage ./network-traffic-control {};

 nlopt = self.callPackage ./nlopt {};

 nmea-msgs = self.callPackage ./nmea-msgs {};

 nodelet = self.callPackage ./nodelet {};

 nodelet-core = self.callPackage ./nodelet-core {};

 nodelet-topic-tools = self.callPackage ./nodelet-topic-tools {};

 nodelet-tutorial-math = self.callPackage ./nodelet-tutorial-math {};

 novatel-gps-driver = self.callPackage ./novatel-gps-driver {};

 novatel-gps-msgs = self.callPackage ./novatel-gps-msgs {};

 novatel-msgs = self.callPackage ./novatel-msgs {};

 ntpd-driver = self.callPackage ./ntpd-driver {};

 obj-to-pointcloud = self.callPackage ./obj-to-pointcloud {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 ocean-battery-driver = self.callPackage ./ocean-battery-driver {};

 ocl = self.callPackage ./ocl {};

 octomap = self.callPackage ./octomap {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-pa = self.callPackage ./octomap-pa {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octovis = self.callPackage ./octovis {};

 ompl = self.callPackage ./ompl {};

 open-karto = self.callPackage ./open-karto {};

 opencv3 = self.callPackage ./opencv3 {};

 opencv-apps = self.callPackage ./opencv-apps {};

 openni2-camera = self.callPackage ./openni2-camera {};

 openni2-launch = self.callPackage ./openni2-launch {};

 openni-description = self.callPackage ./openni-description {};

 openni-launch = self.callPackage ./openni-launch {};

 openrtm-aist = self.callPackage ./openrtm-aist {};

 openslam-gmapping = self.callPackage ./openslam-gmapping {};

 opt-camera = self.callPackage ./opt-camera {};

 orocos-kdl = self.callPackage ./orocos-kdl {};

 orocos-kinematics-dynamics = self.callPackage ./orocos-kinematics-dynamics {};

 osm-cartography = self.callPackage ./osm-cartography {};

 p2os-doc = self.callPackage ./p2os-doc {};

 p2os-driver = self.callPackage ./p2os-driver {};

 p2os-launch = self.callPackage ./p2os-launch {};

 p2os-msgs = self.callPackage ./p2os-msgs {};

 p2os-teleop = self.callPackage ./p2os-teleop {};

 p2os-urdf = self.callPackage ./p2os-urdf {};

 pacmod = self.callPackage ./pacmod {};

 pacmod3 = self.callPackage ./pacmod3 {};

 pacmod-game-control = self.callPackage ./pacmod-game-control {};

 pacmod-msgs = self.callPackage ./pacmod-msgs {};

 parameter-pa = self.callPackage ./parameter-pa {};

 parrot-arsdk = self.callPackage ./parrot-arsdk {};

 pcdfilter-pa = self.callPackage ./pcdfilter-pa {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 people = self.callPackage ./people {};

 people-msgs = self.callPackage ./people-msgs {};

 people-tracking-filter = self.callPackage ./people-tracking-filter {};

 people-velocity-tracker = self.callPackage ./people-velocity-tracker {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 phidgets-api = self.callPackage ./phidgets-api {};

 phidgets-drivers = self.callPackage ./phidgets-drivers {};

 phidgets-high-speed-encoder = self.callPackage ./phidgets-high-speed-encoder {};

 phidgets-ik = self.callPackage ./phidgets-ik {};

 phidgets-imu = self.callPackage ./phidgets-imu {};

 pid = self.callPackage ./pid {};

 planner-cspace = self.callPackage ./planner-cspace {};

 planner-cspace-msgs = self.callPackage ./planner-cspace-msgs {};

 plotjuggler = self.callPackage ./plotjuggler {};

 pluginlib = self.callPackage ./pluginlib {};

 pluginlib-tutorials = self.callPackage ./pluginlib-tutorials {};

 pointcloud-to-laserscan = self.callPackage ./pointcloud-to-laserscan {};

 pointgrey-camera-description = self.callPackage ./pointgrey-camera-description {};

 pointgrey-camera-driver = self.callPackage ./pointgrey-camera-driver {};

 polled-camera = self.callPackage ./polled-camera {};

 pose-base-controller = self.callPackage ./pose-base-controller {};

 pose-follower = self.callPackage ./pose-follower {};

 posedetection-msgs = self.callPackage ./posedetection-msgs {};

 position-controllers = self.callPackage ./position-controllers {};

 power-monitor = self.callPackage ./power-monitor {};

 pr2-app-manager = self.callPackage ./pr2-app-manager {};

 pr2-apps = self.callPackage ./pr2-apps {};

 pr2-arm-kinematics = self.callPackage ./pr2-arm-kinematics {};

 pr2-arm-move-ik = self.callPackage ./pr2-arm-move-ik {};

 pr2-calibration-controllers = self.callPackage ./pr2-calibration-controllers {};

 pr2-common = self.callPackage ./pr2-common {};

 pr2-common-action-msgs = self.callPackage ./pr2-common-action-msgs {};

 pr2-common-actions = self.callPackage ./pr2-common-actions {};

 pr2-controller-configuration-gazebo = self.callPackage ./pr2-controller-configuration-gazebo {};

 pr2-controller-interface = self.callPackage ./pr2-controller-interface {};

 pr2-controller-manager = self.callPackage ./pr2-controller-manager {};

 pr2-controllers = self.callPackage ./pr2-controllers {};

 pr2-controllers-msgs = self.callPackage ./pr2-controllers-msgs {};

 pr2-dashboard-aggregator = self.callPackage ./pr2-dashboard-aggregator {};

 pr2-description = self.callPackage ./pr2-description {};

 pr2-ethercat-drivers = self.callPackage ./pr2-ethercat-drivers {};

 pr2-gazebo = self.callPackage ./pr2-gazebo {};

 pr2-gazebo-plugins = self.callPackage ./pr2-gazebo-plugins {};

 pr2-gripper-action = self.callPackage ./pr2-gripper-action {};

 pr2-hardware-interface = self.callPackage ./pr2-hardware-interface {};

 pr2-head-action = self.callPackage ./pr2-head-action {};

 pr2-kinematics = self.callPackage ./pr2-kinematics {};

 pr2-machine = self.callPackage ./pr2-machine {};

 pr2-mannequin-mode = self.callPackage ./pr2-mannequin-mode {};

 pr2-mechanism = self.callPackage ./pr2-mechanism {};

 pr2-mechanism-controllers = self.callPackage ./pr2-mechanism-controllers {};

 pr2-mechanism-diagnostics = self.callPackage ./pr2-mechanism-diagnostics {};

 pr2-mechanism-model = self.callPackage ./pr2-mechanism-model {};

 pr2-mechanism-msgs = self.callPackage ./pr2-mechanism-msgs {};

 pr2-msgs = self.callPackage ./pr2-msgs {};

 pr2-position-scripts = self.callPackage ./pr2-position-scripts {};

 pr2-power-board = self.callPackage ./pr2-power-board {};

 pr2-power-drivers = self.callPackage ./pr2-power-drivers {};

 pr2-simulator = self.callPackage ./pr2-simulator {};

 pr2-teleop = self.callPackage ./pr2-teleop {};

 pr2-teleop-general = self.callPackage ./pr2-teleop-general {};

 pr2-tilt-laser-interface = self.callPackage ./pr2-tilt-laser-interface {};

 pr2-tuck-arms-action = self.callPackage ./pr2-tuck-arms-action {};

 pr2-tuckarm = self.callPackage ./pr2-tuckarm {};

 ps3joy = self.callPackage ./ps3joy {};

 pyros-config = self.callPackage ./pyros-config {};

 pyros-test = self.callPackage ./pyros-test {};

 pyros-utils = self.callPackage ./pyros-utils {};

 python-orocos-kdl = self.callPackage ./python-orocos-kdl {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qb-chain = self.callPackage ./qb-chain {};

 qb-chain-control = self.callPackage ./qb-chain-control {};

 qb-chain-description = self.callPackage ./qb-chain-description {};

 qb-device = self.callPackage ./qb-device {};

 qb-device-bringup = self.callPackage ./qb-device-bringup {};

 qb-device-control = self.callPackage ./qb-device-control {};

 qb-device-description = self.callPackage ./qb-device-description {};

 qb-device-driver = self.callPackage ./qb-device-driver {};

 qb-device-hardware-interface = self.callPackage ./qb-device-hardware-interface {};

 qb-device-msgs = self.callPackage ./qb-device-msgs {};

 qb-device-srvs = self.callPackage ./qb-device-srvs {};

 qb-device-utils = self.callPackage ./qb-device-utils {};

 qb-hand = self.callPackage ./qb-hand {};

 qb-hand-control = self.callPackage ./qb-hand-control {};

 qb-hand-description = self.callPackage ./qb-hand-description {};

 qb-hand-hardware-interface = self.callPackage ./qb-hand-hardware-interface {};

 qb-move = self.callPackage ./qb-move {};

 qb-move-control = self.callPackage ./qb-move-control {};

 qb-move-description = self.callPackage ./qb-move-description {};

 qb-move-hardware-interface = self.callPackage ./qb-move-hardware-interface {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 qt-qmake = self.callPackage ./qt-qmake {};

 qwt-dependency = self.callPackage ./qwt-dependency {};

 radar-msgs = self.callPackage ./radar-msgs {};

 radar-omnipresense = self.callPackage ./radar-omnipresense {};

 random-numbers = self.callPackage ./random-numbers {};

 rc-cloud-accumulator = self.callPackage ./rc-cloud-accumulator {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rc-hand-eye-calibration-client = self.callPackage ./rc-hand-eye-calibration-client {};

 rc-visard = self.callPackage ./rc-visard {};

 rc-visard-description = self.callPackage ./rc-visard-description {};

 rc-visard-driver = self.callPackage ./rc-visard-driver {};

 realtime-tools = self.callPackage ./realtime-tools {};

 resource-retriever = self.callPackage ./resource-retriever {};

 respeaker-ros = self.callPackage ./respeaker-ros {};

 rexrov2-control = self.callPackage ./rexrov2-control {};

 rexrov2-description = self.callPackage ./rexrov2-description {};

 rexrov2-gazebo = self.callPackage ./rexrov2-gazebo {};

 rgbd-launch = self.callPackage ./rgbd-launch {};

 robot = self.callPackage ./robot {};

 robot-activity = self.callPackage ./robot-activity {};

 robot-activity-msgs = self.callPackage ./robot-activity-msgs {};

 robot-activity-tutorials = self.callPackage ./robot-activity-tutorials {};

 robot-localization = self.callPackage ./robot-localization {};

 robot-mechanism-controllers = self.callPackage ./robot-mechanism-controllers {};

 robot-model = self.callPackage ./robot-model {};

 robot-navigation = self.callPackage ./robot-navigation {};

 robot-pose-ekf = self.callPackage ./robot-pose-ekf {};

 robot-self-filter = self.callPackage ./robot-self-filter {};

 robot-state-publisher = self.callPackage ./robot-state-publisher {};

 ros = self.callPackage ./ros {};

 ros-base = self.callPackage ./ros-base {};

 ros-canopen = self.callPackage ./ros-canopen {};

 ros-comm = self.callPackage ./ros-comm {};

 ros-control = self.callPackage ./ros-control {};

 ros-control-boilerplate = self.callPackage ./ros-control-boilerplate {};

 ros-controllers = self.callPackage ./ros-controllers {};

 ros-core = self.callPackage ./ros-core {};

 ros-emacs-utils = self.callPackage ./ros-emacs-utils {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-introspection = self.callPackage ./ros-introspection {};

 ros-realtime = self.callPackage ./ros-realtime {};

 ros-tutorials = self.callPackage ./ros-tutorials {};

 ros-type-introspection = self.callPackage ./ros-type-introspection {};

 rosapi = self.callPackage ./rosapi {};

 rosatomic = self.callPackage ./rosatomic {};

 rosauth = self.callPackage ./rosauth {};

 rosbag = self.callPackage ./rosbag {};

 rosbag-migration-rule = self.callPackage ./rosbag-migration-rule {};

 rosbag-storage = self.callPackage ./rosbag-storage {};

 rosbaglive = self.callPackage ./rosbaglive {};

 rosbash = self.callPackage ./rosbash {};

 rosbash-params = self.callPackage ./rosbash-params {};

 rosboost-cfg = self.callPackage ./rosboost-cfg {};

 rosbridge-server = self.callPackage ./rosbridge-server {};

 rosbridge-suite = self.callPackage ./rosbridge-suite {};

 rosbuild = self.callPackage ./rosbuild {};

 rosclean = self.callPackage ./rosclean {};

 roscompile = self.callPackage ./roscompile {};

 rosconsole = self.callPackage ./rosconsole {};

 rosconsole-bridge = self.callPackage ./rosconsole-bridge {};

 roscpp = self.callPackage ./roscpp {};

 roscpp-core = self.callPackage ./roscpp-core {};

 roscpp-serialization = self.callPackage ./roscpp-serialization {};

 roscpp-traits = self.callPackage ./roscpp-traits {};

 roscpp-tutorials = self.callPackage ./roscpp-tutorials {};

 roscreate = self.callPackage ./roscreate {};

 rosdiagnostic = self.callPackage ./rosdiagnostic {};

 rosemacs = self.callPackage ./rosemacs {};

 roseus = self.callPackage ./roseus {};

 roseus-smach = self.callPackage ./roseus-smach {};

 rosflight = self.callPackage ./rosflight {};

 rosflight-firmware = self.callPackage ./rosflight-firmware {};

 rosflight-msgs = self.callPackage ./rosflight-msgs {};

 rosflight-pkgs = self.callPackage ./rosflight-pkgs {};

 rosflight-sim = self.callPackage ./rosflight-sim {};

 rosflight-utils = self.callPackage ./rosflight-utils {};

 rosfmt = self.callPackage ./rosfmt {};

 rosgraph = self.callPackage ./rosgraph {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 roslang = self.callPackage ./roslang {};

 roslaunch = self.callPackage ./roslaunch {};

 roslib = self.callPackage ./roslib {};

 roslint = self.callPackage ./roslint {};

 roslisp = self.callPackage ./roslisp {};

 roslisp-common = self.callPackage ./roslisp-common {};

 roslisp-repl = self.callPackage ./roslisp-repl {};

 roslisp-utilities = self.callPackage ./roslisp-utilities {};

 roslz4 = self.callPackage ./roslz4 {};

 rosmake = self.callPackage ./rosmake {};

 rosmaster = self.callPackage ./rosmaster {};

 rosmon = self.callPackage ./rosmon {};

 rosmsg = self.callPackage ./rosmsg {};

 rosnode = self.callPackage ./rosnode {};

 rosout = self.callPackage ./rosout {};

 rospack = self.callPackage ./rospack {};

 rosparam = self.callPackage ./rosparam {};

 rosparam-handler = self.callPackage ./rosparam-handler {};

 rosparam-shortcuts = self.callPackage ./rosparam-shortcuts {};

 rospatlite = self.callPackage ./rospatlite {};

 rosping = self.callPackage ./rosping {};

 rospy = self.callPackage ./rospy {};

 rospy-message-converter = self.callPackage ./rospy-message-converter {};

 rospy-tutorials = self.callPackage ./rospy-tutorials {};

 rosrt = self.callPackage ./rosrt {};

 rosserial = self.callPackage ./rosserial {};

 rosserial-arduino = self.callPackage ./rosserial-arduino {};

 rosserial-client = self.callPackage ./rosserial-client {};

 rosserial-embeddedlinux = self.callPackage ./rosserial-embeddedlinux {};

 rosserial-mbed = self.callPackage ./rosserial-mbed {};

 rosserial-msgs = self.callPackage ./rosserial-msgs {};

 rosserial-python = self.callPackage ./rosserial-python {};

 rosserial-server = self.callPackage ./rosserial-server {};

 rosserial-tivac = self.callPackage ./rosserial-tivac {};

 rosserial-windows = self.callPackage ./rosserial-windows {};

 rosserial-xbee = self.callPackage ./rosserial-xbee {};

 rosservice = self.callPackage ./rosservice {};

 rostest = self.callPackage ./rostest {};

 rostime = self.callPackage ./rostime {};

 rostopic = self.callPackage ./rostopic {};

 rosunit = self.callPackage ./rosunit {};

 roswtf = self.callPackage ./roswtf {};

 rotate-recovery = self.callPackage ./rotate-recovery {};

 route-network = self.callPackage ./route-network {};

 rplidar-ros = self.callPackage ./rplidar-ros {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-dep = self.callPackage ./rqt-dep {};

 rqt-ez-publisher = self.callPackage ./rqt-ez-publisher {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-launch = self.callPackage ./rqt-launch {};

 rqt-logger-level = self.callPackage ./rqt-logger-level {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-multiplot = self.callPackage ./rqt-multiplot {};

 rqt-nav-view = self.callPackage ./rqt-nav-view {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-pose-view = self.callPackage ./rqt-pose-view {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-monitor = self.callPackage ./rqt-robot-monitor {};

 rqt-robot-plugins = self.callPackage ./rqt-robot-plugins {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-rviz = self.callPackage ./rqt-rviz {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rqt-web = self.callPackage ./rqt-web {};

 rtabmap-ros = self.callPackage ./rtabmap-ros {};

 rtt-actionlib = self.callPackage ./rtt-actionlib {};

 rtt-actionlib-msgs = self.callPackage ./rtt-actionlib-msgs {};

 rtt-common-msgs = self.callPackage ./rtt-common-msgs {};

 rtt-diagnostic-msgs = self.callPackage ./rtt-diagnostic-msgs {};

 rtt-dynamic-reconfigure = self.callPackage ./rtt-dynamic-reconfigure {};

 rtt-geometry = self.callPackage ./rtt-geometry {};

 rtt-geometry-msgs = self.callPackage ./rtt-geometry-msgs {};

 rtt-kdl-conversions = self.callPackage ./rtt-kdl-conversions {};

 rtt-nav-msgs = self.callPackage ./rtt-nav-msgs {};

 rtt-ros = self.callPackage ./rtt-ros {};

 rtt-ros-comm = self.callPackage ./rtt-ros-comm {};

 rtt-ros-integration = self.callPackage ./rtt-ros-integration {};

 rtt-ros-msgs = self.callPackage ./rtt-ros-msgs {};

 rtt-rosclock = self.callPackage ./rtt-rosclock {};

 rtt-roscomm = self.callPackage ./rtt-roscomm {};

 rtt-rosdeployment = self.callPackage ./rtt-rosdeployment {};

 rtt-rosgraph-msgs = self.callPackage ./rtt-rosgraph-msgs {};

 rtt-rosnode = self.callPackage ./rtt-rosnode {};

 rtt-rospack = self.callPackage ./rtt-rospack {};

 rtt-rosparam = self.callPackage ./rtt-rosparam {};

 rtt-sensor-msgs = self.callPackage ./rtt-sensor-msgs {};

 rtt-shape-msgs = self.callPackage ./rtt-shape-msgs {};

 rtt-std-msgs = self.callPackage ./rtt-std-msgs {};

 rtt-std-srvs = self.callPackage ./rtt-std-srvs {};

 rtt-stereo-msgs = self.callPackage ./rtt-stereo-msgs {};

 rtt-tf = self.callPackage ./rtt-tf {};

 rtt-trajectory-msgs = self.callPackage ./rtt-trajectory-msgs {};

 rtt-visualization-msgs = self.callPackage ./rtt-visualization-msgs {};

 rviz = self.callPackage ./rviz {};

 rviz-imu-plugin = self.callPackage ./rviz-imu-plugin {};

 rviz-plugin-tutorials = self.callPackage ./rviz-plugin-tutorials {};

 rviz-python-tutorial = self.callPackage ./rviz-python-tutorial {};

 rviz-visual-tools = self.callPackage ./rviz-visual-tools {};

 safety-limiter = self.callPackage ./safety-limiter {};

 sbg-driver = self.callPackage ./sbg-driver {};

 sbpl = self.callPackage ./sbpl {};

 sbpl-lattice-planner = self.callPackage ./sbpl-lattice-planner {};

 sbpl-recovery = self.callPackage ./sbpl-recovery {};

 self-test = self.callPackage ./self-test {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 settlerlib = self.callPackage ./settlerlib {};

 shape-msgs = self.callPackage ./shape-msgs {};

 sick-safetyscanners = self.callPackage ./sick-safetyscanners {};

 sick-scan = self.callPackage ./sick-scan {};

 sick-tim = self.callPackage ./sick-tim {};

 simple-grasping = self.callPackage ./simple-grasping {};

 simulators = self.callPackage ./simulators {};

 single-joint-position-action = self.callPackage ./single-joint-position-action {};

 slam-gmapping = self.callPackage ./slam-gmapping {};

 slam-karto = self.callPackage ./slam-karto {};

 slic = self.callPackage ./slic {};

 slime-ros = self.callPackage ./slime-ros {};

 slime-wrapper = self.callPackage ./slime-wrapper {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smach-viewer = self.callPackage ./smach-viewer {};

 smclib = self.callPackage ./smclib {};

 socketcan-bridge = self.callPackage ./socketcan-bridge {};

 socketcan-interface = self.callPackage ./socketcan-interface {};

 soem = self.callPackage ./soem {};

 sparse-bundle-adjustment = self.callPackage ./sparse-bundle-adjustment {};

 speech-recognition-msgs = self.callPackage ./speech-recognition-msgs {};

 srdfdom = self.callPackage ./srdfdom {};

 stage = self.callPackage ./stage {};

 stage-ros = self.callPackage ./stage-ros {};

 static-tf = self.callPackage ./static-tf {};

 static-transform-mux = self.callPackage ./static-transform-mux {};

 statistics-msgs = self.callPackage ./statistics-msgs {};

 std-capabilities = self.callPackage ./std-capabilities {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 swri-console = self.callPackage ./swri-console {};

 swri-console-util = self.callPackage ./swri-console-util {};

 swri-dbw-interface = self.callPackage ./swri-dbw-interface {};

 swri-geometry-util = self.callPackage ./swri-geometry-util {};

 swri-image-util = self.callPackage ./swri-image-util {};

 swri-math-util = self.callPackage ./swri-math-util {};

 swri-nodelet = self.callPackage ./swri-nodelet {};

 swri-opencv-util = self.callPackage ./swri-opencv-util {};

 swri-prefix-tools = self.callPackage ./swri-prefix-tools {};

 swri-roscpp = self.callPackage ./swri-roscpp {};

 swri-rospy = self.callPackage ./swri-rospy {};

 swri-route-util = self.callPackage ./swri-route-util {};

 swri-serial-util = self.callPackage ./swri-serial-util {};

 swri-string-util = self.callPackage ./swri-string-util {};

 swri-system-util = self.callPackage ./swri-system-util {};

 swri-transform-util = self.callPackage ./swri-transform-util {};

 swri-yaml-util = self.callPackage ./swri-yaml-util {};

 teb-local-planner = self.callPackage ./teb-local-planner {};

 teb-local-planner-tutorials = self.callPackage ./teb-local-planner-tutorials {};

 teleop-tools = self.callPackage ./teleop-tools {};

 teleop-tools-msgs = self.callPackage ./teleop-tools-msgs {};

 teleop-twist-keyboard = self.callPackage ./teleop-twist-keyboard {};

 test-diagnostic-aggregator = self.callPackage ./test-diagnostic-aggregator {};

 test-mavros = self.callPackage ./test-mavros {};

 test-osm = self.callPackage ./test-osm {};

 tf = self.callPackage ./tf {};

 tf2 = self.callPackage ./tf2 {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-geometry-msgs = self.callPackage ./tf2-geometry-msgs {};

 tf2-kdl = self.callPackage ./tf2-kdl {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-sensor-msgs = self.callPackage ./tf2-sensor-msgs {};

 tf2-tools = self.callPackage ./tf2-tools {};

 tf2-web-republisher = self.callPackage ./tf2-web-republisher {};

 tf-conversions = self.callPackage ./tf-conversions {};

 tf-remapper-cpp = self.callPackage ./tf-remapper-cpp {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 tile-map = self.callPackage ./tile-map {};

 timestamp-tools = self.callPackage ./timestamp-tools {};

 topic-tools = self.callPackage ./topic-tools {};

 towr = self.callPackage ./towr {};

 towr-ros = self.callPackage ./towr-ros {};

 trac-ik = self.callPackage ./trac-ik {};

 trac-ik-examples = self.callPackage ./trac-ik-examples {};

 trac-ik-kinematics-plugin = self.callPackage ./trac-ik-kinematics-plugin {};

 trac-ik-python = self.callPackage ./trac-ik-python {};

 track-odometry = self.callPackage ./track-odometry {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 trajectory-tracker = self.callPackage ./trajectory-tracker {};

 trajectory-tracker-msgs = self.callPackage ./trajectory-tracker-msgs {};

 trajectory-tracker-rviz-plugins = self.callPackage ./trajectory-tracker-rviz-plugins {};

 transmission-interface = self.callPackage ./transmission-interface {};

 turtle-actionlib = self.callPackage ./turtle-actionlib {};

 turtle-tf = self.callPackage ./turtle-tf {};

 turtle-tf2 = self.callPackage ./turtle-tf2 {};

 turtlesim = self.callPackage ./turtlesim {};

 twist-recovery = self.callPackage ./twist-recovery {};

 unique-id = self.callPackage ./unique-id {};

 unique-identifier = self.callPackage ./unique-identifier {};

 urdf = self.callPackage ./urdf {};

 urdf-geometry-parser = self.callPackage ./urdf-geometry-parser {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-c = self.callPackage ./urg-c {};

 urg-node = self.callPackage ./urg-node {};

 urg-stamped = self.callPackage ./urg-stamped {};

 usb-cam = self.callPackage ./usb-cam {};

 uuid-msgs = self.callPackage ./uuid-msgs {};

 uuv-assistants = self.callPackage ./uuv-assistants {};

 uuv-auv-control-allocator = self.callPackage ./uuv-auv-control-allocator {};

 uuv-control-cascaded-pid = self.callPackage ./uuv-control-cascaded-pid {};

 uuv-control-msgs = self.callPackage ./uuv-control-msgs {};

 uuv-control-utils = self.callPackage ./uuv-control-utils {};

 uuv-descriptions = self.callPackage ./uuv-descriptions {};

 uuv-gazebo = self.callPackage ./uuv-gazebo {};

 uuv-gazebo-plugins = self.callPackage ./uuv-gazebo-plugins {};

 uuv-gazebo-ros-plugins = self.callPackage ./uuv-gazebo-ros-plugins {};

 uuv-gazebo-ros-plugins-msgs = self.callPackage ./uuv-gazebo-ros-plugins-msgs {};

 uuv-gazebo-worlds = self.callPackage ./uuv-gazebo-worlds {};

 uuv-sensor-ros-plugins = self.callPackage ./uuv-sensor-ros-plugins {};

 uuv-sensor-ros-plugins-msgs = self.callPackage ./uuv-sensor-ros-plugins-msgs {};

 uuv-simulator = self.callPackage ./uuv-simulator {};

 uuv-teleop = self.callPackage ./uuv-teleop {};

 uuv-thruster-manager = self.callPackage ./uuv-thruster-manager {};

 uuv-trajectory-control = self.callPackage ./uuv-trajectory-control {};

 uuv-world-plugins = self.callPackage ./uuv-world-plugins {};

 uuv-world-ros-plugins = self.callPackage ./uuv-world-ros-plugins {};

 uuv-world-ros-plugins-msgs = self.callPackage ./uuv-world-ros-plugins-msgs {};

 uvc-camera = self.callPackage ./uvc-camera {};

 variant = self.callPackage ./variant {};

 variant-msgs = self.callPackage ./variant-msgs {};

 variant-topic-test = self.callPackage ./variant-topic-test {};

 variant-topic-tools = self.callPackage ./variant-topic-tools {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 velodyne = self.callPackage ./velodyne {};

 velodyne-description = self.callPackage ./velodyne-description {};

 velodyne-driver = self.callPackage ./velodyne-driver {};

 velodyne-gazebo-plugins = self.callPackage ./velodyne-gazebo-plugins {};

 velodyne-laserscan = self.callPackage ./velodyne-laserscan {};

 velodyne-msgs = self.callPackage ./velodyne-msgs {};

 velodyne-pointcloud = self.callPackage ./velodyne-pointcloud {};

 velodyne-simulator = self.callPackage ./velodyne-simulator {};

 video-stream-opencv = self.callPackage ./video-stream-opencv {};

 view-controller-msgs = self.callPackage ./view-controller-msgs {};

 vision-msgs = self.callPackage ./vision-msgs {};

 vision-opencv = self.callPackage ./vision-opencv {};

 vision-visp = self.callPackage ./vision-visp {};

 visp-auto-tracker = self.callPackage ./visp-auto-tracker {};

 visp-bridge = self.callPackage ./visp-bridge {};

 visp-camera-calibration = self.callPackage ./visp-camera-calibration {};

 visp-hand2eye-calibration = self.callPackage ./visp-hand2eye-calibration {};

 visp-tracker = self.callPackage ./visp-tracker {};

 visualization-marker-tutorials = self.callPackage ./visualization-marker-tutorials {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 visualization-tutorials = self.callPackage ./visualization-tutorials {};

 viz = self.callPackage ./viz {};

 voice-text = self.callPackage ./voice-text {};

 voxel-grid = self.callPackage ./voxel-grid {};

 vrpn = self.callPackage ./vrpn {};

 vrpn-client-ros = self.callPackage ./vrpn-client-ros {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 webkit-dependency = self.callPackage ./webkit-dependency {};

 wfov-camera-msgs = self.callPackage ./wfov-camera-msgs {};

 wifi-ddwrt = self.callPackage ./wifi-ddwrt {};

 willow-maps = self.callPackage ./willow-maps {};

 wts-driver = self.callPackage ./wts-driver {};

 wu-ros-tools = self.callPackage ./wu-ros-tools {};

 xacro = self.callPackage ./xacro {};

 xmlrpcpp = self.callPackage ./xmlrpcpp {};

 xpp = self.callPackage ./xpp {};

 xpp-examples = self.callPackage ./xpp-examples {};

 xpp-hyq = self.callPackage ./xpp-hyq {};

 xpp-msgs = self.callPackage ./xpp-msgs {};

 xpp-quadrotor = self.callPackage ./xpp-quadrotor {};

 xpp-states = self.callPackage ./xpp-states {};

 xpp-vis = self.callPackage ./xpp-vis {};

 xsens-driver = self.callPackage ./xsens-driver {};

 xv-11-laser-driver = self.callPackage ./xv-11-laser-driver {};

 ypspur = self.callPackage ./ypspur {};

 ypspur-ros = self.callPackage ./ypspur-ros {};

 zbar-ros = self.callPackage ./zbar-ros {};

}
